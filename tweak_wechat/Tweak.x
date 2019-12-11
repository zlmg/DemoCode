#import "MMPerson.h"

%hook FindFriendEntryViewController

- (long long)numberOfSectionsInTableView:(id)tableView {
    return %orig + 1;// %orig 表示调用原来的方法
}

- (long long)tableView:(id)tableView numberOfRowsInSection:(long long)section {
    if (section == [[tableView delegate] numberOfSectionsInTableView:tableView] - 1) {
        return 2;
    } else {
        return %orig;
    }
}

- (double)tableView:(id)tableView heightForRowAtIndexPath:(id)indexPath {
    if ([indexPath section] == [[tableView delegate] numberOfSectionsInTableView:tableView] - 1) {
        return 44;
    } else {
        return %orig;
    }
}

- (id)tableView:(id)tableView cellForRowAtIndexPath:(id)indexPath {
    if ([indexPath section] != [[tableView delegate] numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    }

    if ([indexPath row] == 0) {
        static NSString *cellId = @"autoCellId";
        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
        cell.backgroundColor = [UIColor whiteColor];
        cell.imageView.image = [UIImage imageWithContentsOfFile:@"/redpacket.png"];
        cell.textLabel.text = @"自动抢红包";
        UISwitch *switchView = [UISwitch new];
        NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
        switchView.on = [ud boolForKey:@"mm_auto"];
        [switchView addTarget:self action:@selector(mm_autoChange:) forControlEvents:UIControlEventValueChanged];
        cell.accessoryView = switchView;
        return cell;
    } 
    if ([indexPath row] == 1) {
        static NSString *cellId = @"exitCellId";
        [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellId];
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId forIndexPath:indexPath];
        cell.backgroundColor = [UIColor whiteColor];
        cell.imageView.image = [UIImage imageWithContentsOfFile:@"/exit.png"];
        cell.textLabel.text = @"退出微信";
        return cell;
    }
    return nil; 
}

%new
- (void)mm_autoChange:(UISwitch *)switchView {
    NSUserDefaults *ud = [NSUserDefaults standardUserDefaults];
    [ud setBool:switchView.on forKey:@"mm_auto"];
    [ud synchronize];
}

- (void)tableView:(id)tableView didSelectRowAtIndexPath:(id)indexPath {
    if ([indexPath section] != [[tableView delegate] numberOfSectionsInTableView:tableView] - 1) {
        return %orig;
    } 
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if ([indexPath row] == 1) {
        // exit(0);
        // abort();//终止进程

        MMPerson *p = [MMPerson new];
        p.name = @"zhongda";
        NSLog(@"-----name = %@-----", p.name);
    }
}

%end
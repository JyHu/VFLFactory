//
// Copyright 2011-2014 NimbusKit
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

#import "NIActions.h"

/**
 私有方法，用于记录一些action
 */
@interface NIObjectActions : NSObject

@property (nonatomic, copy) NIActionBlock tapAction;
@property (nonatomic, copy) NIActionBlock detailAction;
@property (nonatomic, copy) NIActionBlock navigateAction;

@property (nonatomic) SEL tapSelector;
@property (nonatomic) SEL detailSelector;
@property (nonatomic) SEL navigateSelector;

@end

@interface NIActions ()

@property (nonatomic, weak) id target;

/**
 根据给定的数据对象获取一个action，这个方法是私有的，可以在内部使用
 */
- (NIObjectActions *)actionForObjectOrClassOfObject:(id<NSObject>)object;

@end
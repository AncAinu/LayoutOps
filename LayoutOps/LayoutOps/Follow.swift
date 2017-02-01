//
//  Created by Pavel Sharanda on 19.10.16.
//  Copyright © 2016 Pavel Sharanda. All rights reserved.
//

import UIKit

private func follow_helper(_ anchorToFollow: Anchor, followerAnchor: Anchor) {
    let toFollowView = anchorToFollow.view
    let followerView = followerAnchor.view
    
    if(toFollowView.__lx_parent !== followerView.__lx_parent) {
        print("[LayoutOps:WARNING] Follow operation will produce undefined results for views with different superview")
        print("View to follow: \(toFollowView)")
        print("Follower view: \(followerView)")
    }
    
    let anchorToFollowFrame = toFollowView.frame
    let followerAnchorFrame = followerView.frame
    
    let result = followerAnchor.setValueForRect(anchorToFollow.valueForRect(anchorToFollowFrame), rect: followerAnchorFrame)
    
    followerView.updateFrame(result)
}

extension VAnchor {
    public func follow(_ anchor: VAnchor) {
        follow_helper(anchor, followerAnchor: self)
    }
}

extension HAnchor {
    public func follow(_ anchor: HAnchor) {
        follow_helper(anchor, followerAnchor: self)
    }
}

extension SizeAnchor {
    public func follow(_ anchor: SizeAnchor) {
        follow_helper(anchor, followerAnchor: self)
    }
}

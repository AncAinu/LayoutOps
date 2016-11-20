//
//  Created by Pavel Sharanda on 19.10.16.
//  Copyright © 2016 Pavel Sharanda. All rights reserved.
//

import UIKit

//some common, but very specific ops

public func AlignFittedLabelsUsingFirstBaseline(_ label1: UILabel, _ label2: UILabel) -> LayoutOperation {
    return Follow(TopAnchor(label1, inset: label1.font.ascender), withAnchor: TopAnchor(label2, inset: label2.font.ascender))
}

public func AlignFittedLabelsUsingLastBaseline(_ label1: UILabel, _ label2: UILabel) -> LayoutOperation {
    return Follow(BottomAnchor(label1, inset: label1.font.descender), withAnchor: BottomAnchor(label2, inset: label2.font.descender))
}

public func SetHeightAsLineHeight(_ label: UILabel) -> LayoutOperation {
    return SetHeight(label, value: label.font.lineHeight)
}

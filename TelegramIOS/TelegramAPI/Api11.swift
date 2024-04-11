public extension Api {
    enum InputPrivacyRule: TypeConstructorDescription {
        case inputPrivacyValueAllowAll
        case inputPrivacyValueAllowChatParticipants(chats: [Int64])
        case inputPrivacyValueAllowCloseFriends
        case inputPrivacyValueAllowContacts
        case inputPrivacyValueAllowPremium
        case inputPrivacyValueAllowUsers(users: [Api.InputUser])
        case inputPrivacyValueDisallowAll
        case inputPrivacyValueDisallowChatParticipants(chats: [Int64])
        case inputPrivacyValueDisallowContacts
        case inputPrivacyValueDisallowUsers(users: [Api.InputUser])
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputPrivacyValueAllowAll:
                    if boxed {
                        buffer.appendInt32(407582158)
                    }
                    
                    break
                case .inputPrivacyValueAllowChatParticipants(let chats):
                    if boxed {
                        buffer.appendInt32(-2079962673)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    break
                case .inputPrivacyValueAllowCloseFriends:
                    if boxed {
                        buffer.appendInt32(793067081)
                    }
                    
                    break
                case .inputPrivacyValueAllowContacts:
                    if boxed {
                        buffer.appendInt32(218751099)
                    }
                    
                    break
                case .inputPrivacyValueAllowPremium:
                    if boxed {
                        buffer.appendInt32(2009975281)
                    }
                    
                    break
                case .inputPrivacyValueAllowUsers(let users):
                    if boxed {
                        buffer.appendInt32(320652927)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
                case .inputPrivacyValueDisallowAll:
                    if boxed {
                        buffer.appendInt32(-697604407)
                    }
                    
                    break
                case .inputPrivacyValueDisallowChatParticipants(let chats):
                    if boxed {
                        buffer.appendInt32(-380694650)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(chats.count))
                    for item in chats {
                        serializeInt64(item, buffer: buffer, boxed: false)
                    }
                    break
                case .inputPrivacyValueDisallowContacts:
                    if boxed {
                        buffer.appendInt32(195371015)
                    }
                    
                    break
                case .inputPrivacyValueDisallowUsers(let users):
                    if boxed {
                        buffer.appendInt32(-1877932953)
                    }
                    buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(users.count))
                    for item in users {
                        item.serialize(buffer, true)
                    }
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputPrivacyValueAllowAll:
                return ("inputPrivacyValueAllowAll", [])
                case .inputPrivacyValueAllowChatParticipants(let chats):
                return ("inputPrivacyValueAllowChatParticipants", [("chats", chats as Any)])
                case .inputPrivacyValueAllowCloseFriends:
                return ("inputPrivacyValueAllowCloseFriends", [])
                case .inputPrivacyValueAllowContacts:
                return ("inputPrivacyValueAllowContacts", [])
                case .inputPrivacyValueAllowPremium:
                return ("inputPrivacyValueAllowPremium", [])
                case .inputPrivacyValueAllowUsers(let users):
                return ("inputPrivacyValueAllowUsers", [("users", users as Any)])
                case .inputPrivacyValueDisallowAll:
                return ("inputPrivacyValueDisallowAll", [])
                case .inputPrivacyValueDisallowChatParticipants(let chats):
                return ("inputPrivacyValueDisallowChatParticipants", [("chats", chats as Any)])
                case .inputPrivacyValueDisallowContacts:
                return ("inputPrivacyValueDisallowContacts", [])
                case .inputPrivacyValueDisallowUsers(let users):
                return ("inputPrivacyValueDisallowUsers", [("users", users as Any)])
    }
    }
    
        public static func parse_inputPrivacyValueAllowAll(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowAll
        }
        public static func parse_inputPrivacyValueAllowChatParticipants(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Int64]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueAllowChatParticipants(chats: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputPrivacyValueAllowCloseFriends(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowCloseFriends
        }
        public static func parse_inputPrivacyValueAllowContacts(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowContacts
        }
        public static func parse_inputPrivacyValueAllowPremium(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueAllowPremium
        }
        public static func parse_inputPrivacyValueAllowUsers(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Api.InputUser]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputUser.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueAllowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputPrivacyValueDisallowAll(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueDisallowAll
        }
        public static func parse_inputPrivacyValueDisallowChatParticipants(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Int64]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 570911930, elementType: Int64.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueDisallowChatParticipants(chats: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputPrivacyValueDisallowContacts(_ reader: BufferReader) -> InputPrivacyRule? {
            return Api.InputPrivacyRule.inputPrivacyValueDisallowContacts
        }
        public static func parse_inputPrivacyValueDisallowUsers(_ reader: BufferReader) -> InputPrivacyRule? {
            var _1: [Api.InputUser]?
            if let _ = reader.readInt32() {
                _1 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputUser.self)
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputPrivacyRule.inputPrivacyValueDisallowUsers(users: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputQuickReplyShortcut: TypeConstructorDescription {
        case inputQuickReplyShortcut(shortcut: String)
        case inputQuickReplyShortcutId(shortcutId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputQuickReplyShortcut(let shortcut):
                    if boxed {
                        buffer.appendInt32(609840449)
                    }
                    serializeString(shortcut, buffer: buffer, boxed: false)
                    break
                case .inputQuickReplyShortcutId(let shortcutId):
                    if boxed {
                        buffer.appendInt32(18418929)
                    }
                    serializeInt32(shortcutId, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputQuickReplyShortcut(let shortcut):
                return ("inputQuickReplyShortcut", [("shortcut", shortcut as Any)])
                case .inputQuickReplyShortcutId(let shortcutId):
                return ("inputQuickReplyShortcutId", [("shortcutId", shortcutId as Any)])
    }
    }
    
        public static func parse_inputQuickReplyShortcut(_ reader: BufferReader) -> InputQuickReplyShortcut? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputQuickReplyShortcut.inputQuickReplyShortcut(shortcut: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputQuickReplyShortcutId(_ reader: BufferReader) -> InputQuickReplyShortcut? {
            var _1: Int32?
            _1 = reader.readInt32()
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputQuickReplyShortcut.inputQuickReplyShortcutId(shortcutId: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    indirect enum InputReplyTo: TypeConstructorDescription {
        case inputReplyToMessage(flags: Int32, replyToMsgId: Int32, topMsgId: Int32?, replyToPeerId: Api.InputPeer?, quoteText: String?, quoteEntities: [Api.MessageEntity]?, quoteOffset: Int32?)
        case inputReplyToStory(peer: Api.InputPeer, storyId: Int32)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputReplyToMessage(let flags, let replyToMsgId, let topMsgId, let replyToPeerId, let quoteText, let quoteEntities, let quoteOffset):
                    if boxed {
                        buffer.appendInt32(583071445)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    serializeInt32(replyToMsgId, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {serializeInt32(topMsgId!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 1) != 0 {replyToPeerId!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 2) != 0 {serializeString(quoteText!, buffer: buffer, boxed: false)}
                    if Int(flags) & Int(1 << 3) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(quoteEntities!.count))
                    for item in quoteEntities! {
                        item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 4) != 0 {serializeInt32(quoteOffset!, buffer: buffer, boxed: false)}
                    break
                case .inputReplyToStory(let peer, let storyId):
                    if boxed {
                        buffer.appendInt32(1484862010)
                    }
                    peer.serialize(buffer, true)
                    serializeInt32(storyId, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputReplyToMessage(let flags, let replyToMsgId, let topMsgId, let replyToPeerId, let quoteText, let quoteEntities, let quoteOffset):
                return ("inputReplyToMessage", [("flags", flags as Any), ("replyToMsgId", replyToMsgId as Any), ("topMsgId", topMsgId as Any), ("replyToPeerId", replyToPeerId as Any), ("quoteText", quoteText as Any), ("quoteEntities", quoteEntities as Any), ("quoteOffset", quoteOffset as Any)])
                case .inputReplyToStory(let peer, let storyId):
                return ("inputReplyToStory", [("peer", peer as Any), ("storyId", storyId as Any)])
    }
    }
    
        public static func parse_inputReplyToMessage(_ reader: BufferReader) -> InputReplyTo? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: Int32?
            if Int(_1!) & Int(1 << 0) != 0 {_3 = reader.readInt32() }
            var _4: Api.InputPeer?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.InputPeer
            } }
            var _5: String?
            if Int(_1!) & Int(1 << 2) != 0 {_5 = parseString(reader) }
            var _6: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 3) != 0 {if let _ = reader.readInt32() {
                _6 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            var _7: Int32?
            if Int(_1!) & Int(1 << 4) != 0 {_7 = reader.readInt32() }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 3) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 4) == 0) || _7 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 {
                return Api.InputReplyTo.inputReplyToMessage(flags: _1!, replyToMsgId: _2!, topMsgId: _3, replyToPeerId: _4, quoteText: _5, quoteEntities: _6, quoteOffset: _7)
            }
            else {
                return nil
            }
        }
        public static func parse_inputReplyToStory(_ reader: BufferReader) -> InputReplyTo? {
            var _1: Api.InputPeer?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputPeer
            }
            var _2: Int32?
            _2 = reader.readInt32()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputReplyTo.inputReplyToStory(peer: _1!, storyId: _2!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputSecureFile: TypeConstructorDescription {
        case inputSecureFile(id: Int64, accessHash: Int64)
        case inputSecureFileUploaded(id: Int64, parts: Int32, md5Checksum: String, fileHash: Buffer, secret: Buffer)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputSecureFile(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(1399317950)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputSecureFileUploaded(let id, let parts, let md5Checksum, let fileHash, let secret):
                    if boxed {
                        buffer.appendInt32(859091184)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt32(parts, buffer: buffer, boxed: false)
                    serializeString(md5Checksum, buffer: buffer, boxed: false)
                    serializeBytes(fileHash, buffer: buffer, boxed: false)
                    serializeBytes(secret, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputSecureFile(let id, let accessHash):
                return ("inputSecureFile", [("id", id as Any), ("accessHash", accessHash as Any)])
                case .inputSecureFileUploaded(let id, let parts, let md5Checksum, let fileHash, let secret):
                return ("inputSecureFileUploaded", [("id", id as Any), ("parts", parts as Any), ("md5Checksum", md5Checksum as Any), ("fileHash", fileHash as Any), ("secret", secret as Any)])
    }
    }
    
        public static func parse_inputSecureFile(_ reader: BufferReader) -> InputSecureFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputSecureFile.inputSecureFile(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputSecureFileUploaded(_ reader: BufferReader) -> InputSecureFile? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int32?
            _2 = reader.readInt32()
            var _3: String?
            _3 = parseString(reader)
            var _4: Buffer?
            _4 = parseBytes(reader)
            var _5: Buffer?
            _5 = parseBytes(reader)
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputSecureFile.inputSecureFileUploaded(id: _1!, parts: _2!, md5Checksum: _3!, fileHash: _4!, secret: _5!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputSecureValue: TypeConstructorDescription {
        case inputSecureValue(flags: Int32, type: Api.SecureValueType, data: Api.SecureData?, frontSide: Api.InputSecureFile?, reverseSide: Api.InputSecureFile?, selfie: Api.InputSecureFile?, translation: [Api.InputSecureFile]?, files: [Api.InputSecureFile]?, plainData: Api.SecurePlainData?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputSecureValue(let flags, let type, let data, let frontSide, let reverseSide, let selfie, let translation, let files, let plainData):
                    if boxed {
                        buffer.appendInt32(-618540889)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    type.serialize(buffer, true)
                    if Int(flags) & Int(1 << 0) != 0 {data!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 1) != 0 {frontSide!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 2) != 0 {reverseSide!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 3) != 0 {selfie!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 6) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(translation!.count))
                    for item in translation! {
                        item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 4) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(files!.count))
                    for item in files! {
                        item.serialize(buffer, true)
                    }}
                    if Int(flags) & Int(1 << 5) != 0 {plainData!.serialize(buffer, true)}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputSecureValue(let flags, let type, let data, let frontSide, let reverseSide, let selfie, let translation, let files, let plainData):
                return ("inputSecureValue", [("flags", flags as Any), ("type", type as Any), ("data", data as Any), ("frontSide", frontSide as Any), ("reverseSide", reverseSide as Any), ("selfie", selfie as Any), ("translation", translation as Any), ("files", files as Any), ("plainData", plainData as Any)])
    }
    }
    
        public static func parse_inputSecureValue(_ reader: BufferReader) -> InputSecureValue? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.SecureValueType?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.SecureValueType
            }
            var _3: Api.SecureData?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _3 = Api.parse(reader, signature: signature) as? Api.SecureData
            } }
            var _4: Api.InputSecureFile?
            if Int(_1!) & Int(1 << 1) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.InputSecureFile
            } }
            var _5: Api.InputSecureFile?
            if Int(_1!) & Int(1 << 2) != 0 {if let signature = reader.readInt32() {
                _5 = Api.parse(reader, signature: signature) as? Api.InputSecureFile
            } }
            var _6: Api.InputSecureFile?
            if Int(_1!) & Int(1 << 3) != 0 {if let signature = reader.readInt32() {
                _6 = Api.parse(reader, signature: signature) as? Api.InputSecureFile
            } }
            var _7: [Api.InputSecureFile]?
            if Int(_1!) & Int(1 << 6) != 0 {if let _ = reader.readInt32() {
                _7 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputSecureFile.self)
            } }
            var _8: [Api.InputSecureFile]?
            if Int(_1!) & Int(1 << 4) != 0 {if let _ = reader.readInt32() {
                _8 = Api.parseVector(reader, elementSignature: 0, elementType: Api.InputSecureFile.self)
            } }
            var _9: Api.SecurePlainData?
            if Int(_1!) & Int(1 << 5) != 0 {if let signature = reader.readInt32() {
                _9 = Api.parse(reader, signature: signature) as? Api.SecurePlainData
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = (Int(_1!) & Int(1 << 0) == 0) || _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 1) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 2) == 0) || _5 != nil
            let _c6 = (Int(_1!) & Int(1 << 3) == 0) || _6 != nil
            let _c7 = (Int(_1!) & Int(1 << 6) == 0) || _7 != nil
            let _c8 = (Int(_1!) & Int(1 << 4) == 0) || _8 != nil
            let _c9 = (Int(_1!) & Int(1 << 5) == 0) || _9 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 && _c6 && _c7 && _c8 && _c9 {
                return Api.InputSecureValue.inputSecureValue(flags: _1!, type: _2!, data: _3, frontSide: _4, reverseSide: _5, selfie: _6, translation: _7, files: _8, plainData: _9)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    indirect enum InputSingleMedia: TypeConstructorDescription {
        case inputSingleMedia(flags: Int32, media: Api.InputMedia, randomId: Int64, message: String, entities: [Api.MessageEntity]?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputSingleMedia(let flags, let media, let randomId, let message, let entities):
                    if boxed {
                        buffer.appendInt32(482797855)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    media.serialize(buffer, true)
                    serializeInt64(randomId, buffer: buffer, boxed: false)
                    serializeString(message, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {buffer.appendInt32(481674261)
                    buffer.appendInt32(Int32(entities!.count))
                    for item in entities! {
                        item.serialize(buffer, true)
                    }}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputSingleMedia(let flags, let media, let randomId, let message, let entities):
                return ("inputSingleMedia", [("flags", flags as Any), ("media", media as Any), ("randomId", randomId as Any), ("message", message as Any), ("entities", entities as Any)])
    }
    }
    
        public static func parse_inputSingleMedia(_ reader: BufferReader) -> InputSingleMedia? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.InputMedia?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputMedia
            }
            var _3: Int64?
            _3 = reader.readInt64()
            var _4: String?
            _4 = parseString(reader)
            var _5: [Api.MessageEntity]?
            if Int(_1!) & Int(1 << 0) != 0 {if let _ = reader.readInt32() {
                _5 = Api.parseVector(reader, elementSignature: 0, elementType: Api.MessageEntity.self)
            } }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 0) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputSingleMedia.inputSingleMedia(flags: _1!, media: _2!, randomId: _3!, message: _4!, entities: _5)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputStickerSet: TypeConstructorDescription {
        case inputStickerSetAnimatedEmoji
        case inputStickerSetAnimatedEmojiAnimations
        case inputStickerSetDice(emoticon: String)
        case inputStickerSetEmojiChannelDefaultStatuses
        case inputStickerSetEmojiDefaultStatuses
        case inputStickerSetEmojiDefaultTopicIcons
        case inputStickerSetEmojiGenericAnimations
        case inputStickerSetEmpty
        case inputStickerSetID(id: Int64, accessHash: Int64)
        case inputStickerSetPremiumGifts
        case inputStickerSetShortName(shortName: String)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputStickerSetAnimatedEmoji:
                    if boxed {
                        buffer.appendInt32(42402760)
                    }
                    
                    break
                case .inputStickerSetAnimatedEmojiAnimations:
                    if boxed {
                        buffer.appendInt32(215889721)
                    }
                    
                    break
                case .inputStickerSetDice(let emoticon):
                    if boxed {
                        buffer.appendInt32(-427863538)
                    }
                    serializeString(emoticon, buffer: buffer, boxed: false)
                    break
                case .inputStickerSetEmojiChannelDefaultStatuses:
                    if boxed {
                        buffer.appendInt32(1232373075)
                    }
                    
                    break
                case .inputStickerSetEmojiDefaultStatuses:
                    if boxed {
                        buffer.appendInt32(701560302)
                    }
                    
                    break
                case .inputStickerSetEmojiDefaultTopicIcons:
                    if boxed {
                        buffer.appendInt32(1153562857)
                    }
                    
                    break
                case .inputStickerSetEmojiGenericAnimations:
                    if boxed {
                        buffer.appendInt32(80008398)
                    }
                    
                    break
                case .inputStickerSetEmpty:
                    if boxed {
                        buffer.appendInt32(-4838507)
                    }
                    
                    break
                case .inputStickerSetID(let id, let accessHash):
                    if boxed {
                        buffer.appendInt32(-1645763991)
                    }
                    serializeInt64(id, buffer: buffer, boxed: false)
                    serializeInt64(accessHash, buffer: buffer, boxed: false)
                    break
                case .inputStickerSetPremiumGifts:
                    if boxed {
                        buffer.appendInt32(-930399486)
                    }
                    
                    break
                case .inputStickerSetShortName(let shortName):
                    if boxed {
                        buffer.appendInt32(-2044933984)
                    }
                    serializeString(shortName, buffer: buffer, boxed: false)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputStickerSetAnimatedEmoji:
                return ("inputStickerSetAnimatedEmoji", [])
                case .inputStickerSetAnimatedEmojiAnimations:
                return ("inputStickerSetAnimatedEmojiAnimations", [])
                case .inputStickerSetDice(let emoticon):
                return ("inputStickerSetDice", [("emoticon", emoticon as Any)])
                case .inputStickerSetEmojiChannelDefaultStatuses:
                return ("inputStickerSetEmojiChannelDefaultStatuses", [])
                case .inputStickerSetEmojiDefaultStatuses:
                return ("inputStickerSetEmojiDefaultStatuses", [])
                case .inputStickerSetEmojiDefaultTopicIcons:
                return ("inputStickerSetEmojiDefaultTopicIcons", [])
                case .inputStickerSetEmojiGenericAnimations:
                return ("inputStickerSetEmojiGenericAnimations", [])
                case .inputStickerSetEmpty:
                return ("inputStickerSetEmpty", [])
                case .inputStickerSetID(let id, let accessHash):
                return ("inputStickerSetID", [("id", id as Any), ("accessHash", accessHash as Any)])
                case .inputStickerSetPremiumGifts:
                return ("inputStickerSetPremiumGifts", [])
                case .inputStickerSetShortName(let shortName):
                return ("inputStickerSetShortName", [("shortName", shortName as Any)])
    }
    }
    
        public static func parse_inputStickerSetAnimatedEmoji(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetAnimatedEmoji
        }
        public static func parse_inputStickerSetAnimatedEmojiAnimations(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetAnimatedEmojiAnimations
        }
        public static func parse_inputStickerSetDice(_ reader: BufferReader) -> InputStickerSet? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputStickerSet.inputStickerSetDice(emoticon: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputStickerSetEmojiChannelDefaultStatuses(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmojiChannelDefaultStatuses
        }
        public static func parse_inputStickerSetEmojiDefaultStatuses(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmojiDefaultStatuses
        }
        public static func parse_inputStickerSetEmojiDefaultTopicIcons(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmojiDefaultTopicIcons
        }
        public static func parse_inputStickerSetEmojiGenericAnimations(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmojiGenericAnimations
        }
        public static func parse_inputStickerSetEmpty(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetEmpty
        }
        public static func parse_inputStickerSetID(_ reader: BufferReader) -> InputStickerSet? {
            var _1: Int64?
            _1 = reader.readInt64()
            var _2: Int64?
            _2 = reader.readInt64()
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            if _c1 && _c2 {
                return Api.InputStickerSet.inputStickerSetID(id: _1!, accessHash: _2!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputStickerSetPremiumGifts(_ reader: BufferReader) -> InputStickerSet? {
            return Api.InputStickerSet.inputStickerSetPremiumGifts
        }
        public static func parse_inputStickerSetShortName(_ reader: BufferReader) -> InputStickerSet? {
            var _1: String?
            _1 = parseString(reader)
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputStickerSet.inputStickerSetShortName(shortName: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputStickerSetItem: TypeConstructorDescription {
        case inputStickerSetItem(flags: Int32, document: Api.InputDocument, emoji: String, maskCoords: Api.MaskCoords?, keywords: String?)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputStickerSetItem(let flags, let document, let emoji, let maskCoords, let keywords):
                    if boxed {
                        buffer.appendInt32(853188252)
                    }
                    serializeInt32(flags, buffer: buffer, boxed: false)
                    document.serialize(buffer, true)
                    serializeString(emoji, buffer: buffer, boxed: false)
                    if Int(flags) & Int(1 << 0) != 0 {maskCoords!.serialize(buffer, true)}
                    if Int(flags) & Int(1 << 1) != 0 {serializeString(keywords!, buffer: buffer, boxed: false)}
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputStickerSetItem(let flags, let document, let emoji, let maskCoords, let keywords):
                return ("inputStickerSetItem", [("flags", flags as Any), ("document", document as Any), ("emoji", emoji as Any), ("maskCoords", maskCoords as Any), ("keywords", keywords as Any)])
    }
    }
    
        public static func parse_inputStickerSetItem(_ reader: BufferReader) -> InputStickerSetItem? {
            var _1: Int32?
            _1 = reader.readInt32()
            var _2: Api.InputDocument?
            if let signature = reader.readInt32() {
                _2 = Api.parse(reader, signature: signature) as? Api.InputDocument
            }
            var _3: String?
            _3 = parseString(reader)
            var _4: Api.MaskCoords?
            if Int(_1!) & Int(1 << 0) != 0 {if let signature = reader.readInt32() {
                _4 = Api.parse(reader, signature: signature) as? Api.MaskCoords
            } }
            var _5: String?
            if Int(_1!) & Int(1 << 1) != 0 {_5 = parseString(reader) }
            let _c1 = _1 != nil
            let _c2 = _2 != nil
            let _c3 = _3 != nil
            let _c4 = (Int(_1!) & Int(1 << 0) == 0) || _4 != nil
            let _c5 = (Int(_1!) & Int(1 << 1) == 0) || _5 != nil
            if _c1 && _c2 && _c3 && _c4 && _c5 {
                return Api.InputStickerSetItem.inputStickerSetItem(flags: _1!, document: _2!, emoji: _3!, maskCoords: _4, keywords: _5)
            }
            else {
                return nil
            }
        }
    
    }
}
public extension Api {
    enum InputStickeredMedia: TypeConstructorDescription {
        case inputStickeredMediaDocument(id: Api.InputDocument)
        case inputStickeredMediaPhoto(id: Api.InputPhoto)
    
    public func serialize(_ buffer: Buffer, _ boxed: Swift.Bool) {
    switch self {
                case .inputStickeredMediaDocument(let id):
                    if boxed {
                        buffer.appendInt32(70813275)
                    }
                    id.serialize(buffer, true)
                    break
                case .inputStickeredMediaPhoto(let id):
                    if boxed {
                        buffer.appendInt32(1251549527)
                    }
                    id.serialize(buffer, true)
                    break
    }
    }
    
    public func descriptionFields() -> (String, [(String, Any)]) {
        switch self {
                case .inputStickeredMediaDocument(let id):
                return ("inputStickeredMediaDocument", [("id", id as Any)])
                case .inputStickeredMediaPhoto(let id):
                return ("inputStickeredMediaPhoto", [("id", id as Any)])
    }
    }
    
        public static func parse_inputStickeredMediaDocument(_ reader: BufferReader) -> InputStickeredMedia? {
            var _1: Api.InputDocument?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputDocument
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputStickeredMedia.inputStickeredMediaDocument(id: _1!)
            }
            else {
                return nil
            }
        }
        public static func parse_inputStickeredMediaPhoto(_ reader: BufferReader) -> InputStickeredMedia? {
            var _1: Api.InputPhoto?
            if let signature = reader.readInt32() {
                _1 = Api.parse(reader, signature: signature) as? Api.InputPhoto
            }
            let _c1 = _1 != nil
            if _c1 {
                return Api.InputStickeredMedia.inputStickeredMediaPhoto(id: _1!)
            }
            else {
                return nil
            }
        }
    
    }
}

//
// Copyright 2024 Signal Messenger, LLC
// SPDX-License-Identifier: AGPL-3.0-only
//

// Code generated by Wire protocol buffer compiler, do not edit.
// Source: BackupProto.BackupProtoGroupUnknownInviteeUpdate in Backup.proto
import Foundation
import Wire

public struct BackupProtoGroupUnknownInviteeUpdate {

    /**
     * Can be the self user.
     */
    @ProtoDefaulted
    public var inviterAci: Foundation.Data?
    public var inviteeCount: UInt32
    public var unknownFields: UnknownFields = .init()

    public init(inviteeCount: UInt32, configure: (inout Self) -> Swift.Void = { _ in }) {
        self.inviteeCount = inviteeCount
        configure(&self)
    }

}

#if !WIRE_REMOVE_EQUATABLE
extension BackupProtoGroupUnknownInviteeUpdate : Equatable {
}
#endif

#if !WIRE_REMOVE_HASHABLE
extension BackupProtoGroupUnknownInviteeUpdate : Hashable {
}
#endif

extension BackupProtoGroupUnknownInviteeUpdate : Sendable {
}

extension BackupProtoGroupUnknownInviteeUpdate : ProtoMessage {

    public static func protoMessageTypeURL() -> String {
        return "type.googleapis.com/BackupProto.BackupProtoGroupUnknownInviteeUpdate"
    }

}

extension BackupProtoGroupUnknownInviteeUpdate : Proto3Codable {

    public init(from protoReader: ProtoReader) throws {
        var inviterAci: Foundation.Data? = nil
        var inviteeCount: UInt32 = 0

        let token = try protoReader.beginMessage()
        while let tag = try protoReader.nextTag(token: token) {
            switch tag {
            case 1: inviterAci = try protoReader.decode(Foundation.Data.self)
            case 2: inviteeCount = try protoReader.decode(UInt32.self)
            default: try protoReader.readUnknownField(tag: tag)
            }
        }
        self.unknownFields = try protoReader.endMessage(token: token)

        self._inviterAci.wrappedValue = inviterAci
        self.inviteeCount = inviteeCount
    }

    public func encode(to protoWriter: ProtoWriter) throws {
        try protoWriter.encode(tag: 1, value: self.inviterAci)
        try protoWriter.encode(tag: 2, value: self.inviteeCount)
        try protoWriter.writeUnknownFields(unknownFields)
    }

}

#if !WIRE_REMOVE_CODABLE
extension BackupProtoGroupUnknownInviteeUpdate : Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringLiteralCodingKeys.self)
        self._inviterAci.wrappedValue = try container.decodeIfPresent(stringEncoded: Foundation.Data.self, forKey: "inviterAci")
        self.inviteeCount = try container.decode(UInt32.self, forKey: "inviteeCount")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringLiteralCodingKeys.self)
        let includeDefaults = encoder.protoDefaultValuesEncodingStrategy == .include

        try container.encodeIfPresent(stringEncoded: self.inviterAci, forKey: "inviterAci")
        if includeDefaults || self.inviteeCount != 0 {
            try container.encode(self.inviteeCount, forKey: "inviteeCount")
        }
    }

}
#endif
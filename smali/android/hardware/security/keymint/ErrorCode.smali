# classes2.dex

.class public interface abstract annotation Landroid/hardware/security/keymint/ErrorCode;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# static fields
.field public static final ATTESTATION_APPLICATION_ID_MISSING:I = -0x41

.field public static final ATTESTATION_CHALLENGE_MISSING:I = -0x3f

.field public static final ATTESTATION_IDS_NOT_PROVISIONED:I = -0x4b

.field public static final ATTESTATION_KEYS_NOT_PROVISIONED:I = -0x4a

.field public static final BOOT_LEVEL_EXCEEDED:I = -0x54

.field public static final CALLER_NONCE_PROHIBITED:I = -0x37

.field public static final CANNOT_ATTEST_IDS:I = -0x42

.field public static final CONCURRENT_ACCESS_CONFLICT:I = -0x2f

.field public static final CONCURRENT_PROOF_OF_PRESENCE_REQUESTED:I = -0x46

.field public static final DELEGATION_NOT_ALLOWED:I = -0x17

.field public static final DEVICE_LOCKED:I = -0x48

.field public static final EARLY_BOOT_ENDED:I = -0x49

.field public static final HARDWARE_NOT_YET_AVAILABLE:I = -0x55

.field public static final HARDWARE_TYPE_UNAVAILABLE:I = -0x44

.field public static final IMPORTED_KEY_DECRYPTION_FAILED:I = -0x23

.field public static final IMPORTED_KEY_NOT_ENCRYPTED:I = -0x22

.field public static final IMPORTED_KEY_NOT_SIGNED:I = -0x24

.field public static final IMPORTED_KEY_VERIFICATION_FAILED:I = -0x25

.field public static final IMPORT_PARAMETER_MISMATCH:I = -0x2c

.field public static final INCOMPATIBLE_ALGORITHM:I = -0x5

.field public static final INCOMPATIBLE_BLOCK_MODE:I = -0x8

.field public static final INCOMPATIBLE_DIGEST:I = -0xd

.field public static final INCOMPATIBLE_KEY_FORMAT:I = -0x12

.field public static final INCOMPATIBLE_MGF_DIGEST:I = -0x4e

.field public static final INCOMPATIBLE_PADDING_MODE:I = -0xb

.field public static final INCOMPATIBLE_PURPOSE:I = -0x3

.field public static final INSUFFICIENT_BUFFER_SPACE:I = -0x1d

.field public static final INVALID_ARGUMENT:I = -0x26

.field public static final INVALID_AUTHORIZATION_TIMEOUT:I = -0x10

.field public static final INVALID_EXPIRATION_TIME:I = -0xe

.field public static final INVALID_INPUT_LENGTH:I = -0x15

.field public static final INVALID_ISSUER_SUBJECT:I = -0x53

.field public static final INVALID_KEY_BLOB:I = -0x21

.field public static final INVALID_MAC_LENGTH:I = -0x39

.field public static final INVALID_NONCE:I = -0x34

.field public static final INVALID_OPERATION:I = -0x4c

.field public static final INVALID_OPERATION_HANDLE:I = -0x1c

.field public static final INVALID_TAG:I = -0x28

.field public static final INVALID_USER_ID:I = -0xf

.field public static final KEYMINT_NOT_CONFIGURED:I = -0x40

.field public static final KEY_EXPIRED:I = -0x19

.field public static final KEY_EXPORT_OPTIONS_INVALID:I = -0x16

.field public static final KEY_MAX_OPS_EXCEEDED:I = -0x38

.field public static final KEY_NOT_YET_VALID:I = -0x18

.field public static final KEY_RATE_LIMIT_EXCEEDED:I = -0x36

.field public static final KEY_REQUIRES_UPGRADE:I = -0x3e

.field public static final KEY_USER_NOT_AUTHENTICATED:I = -0x1a

.field public static final MEMORY_ALLOCATION_FAILED:I = -0x29

.field public static final MISSING_ISSUER_SUBJECT:I = -0x52

.field public static final MISSING_MAC_LENGTH:I = -0x35

.field public static final MISSING_MIN_MAC_LENGTH:I = -0x3a

.field public static final MISSING_NONCE:I = -0x33

.field public static final MISSING_NOT_AFTER:I = -0x51

.field public static final MISSING_NOT_BEFORE:I = -0x50

.field public static final NO_USER_CONFIRMATION:I = -0x47

.field public static final OK:I = 0x0

.field public static final OPERATION_CANCELLED:I = -0x2e

.field public static final OUTPUT_PARAMETER_NULL:I = -0x1b

.field public static final PROOF_OF_PRESENCE_REQUIRED:I = -0x45

.field public static final ROLLBACK_RESISTANCE_UNAVAILABLE:I = -0x43

.field public static final ROOT_OF_TRUST_ALREADY_SET:I = -0x1

.field public static final SECURE_HW_ACCESS_DENIED:I = -0x2d

.field public static final SECURE_HW_BUSY:I = -0x30

.field public static final SECURE_HW_COMMUNICATION_FAILED:I = -0x31

.field public static final STORAGE_KEY_UNSUPPORTED:I = -0x4d

.field public static final TOO_MANY_OPERATIONS:I = -0x1f

.field public static final UNEXPECTED_NULL_POINTER:I = -0x20

.field public static final UNIMPLEMENTED:I = -0x64

.field public static final UNKNOWN_ERROR:I = -0x3e8

.field public static final UNSUPPORTED_ALGORITHM:I = -0x4

.field public static final UNSUPPORTED_BLOCK_MODE:I = -0x7

.field public static final UNSUPPORTED_DIGEST:I = -0xc

.field public static final UNSUPPORTED_EC_CURVE:I = -0x3d

.field public static final UNSUPPORTED_EC_FIELD:I = -0x32

.field public static final UNSUPPORTED_KDF:I = -0x3c

.field public static final UNSUPPORTED_KEY_ENCRYPTION_ALGORITHM:I = -0x13

.field public static final UNSUPPORTED_KEY_FORMAT:I = -0x11

.field public static final UNSUPPORTED_KEY_SIZE:I = -0x6

.field public static final UNSUPPORTED_KEY_VERIFICATION_ALGORITHM:I = -0x14

.field public static final UNSUPPORTED_MAC_LENGTH:I = -0x9

.field public static final UNSUPPORTED_MGF_DIGEST:I = -0x4f

.field public static final UNSUPPORTED_MIN_MAC_LENGTH:I = -0x3b

.field public static final UNSUPPORTED_PADDING_MODE:I = -0xa

.field public static final UNSUPPORTED_PURPOSE:I = -0x2

.field public static final UNSUPPORTED_TAG:I = -0x27

.field public static final VERIFICATION_FAILED:I = -0x1e

.field public static final VERSION_MISMATCH:I = -0x65

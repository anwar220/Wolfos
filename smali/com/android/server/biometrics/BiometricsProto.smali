# classes4.dex

.class public final Lcom/android/server/biometrics/BiometricsProto;
.super Ljava/lang/Object;


# static fields
.field public static final CM_AUTHENTICATE:I = 0x3

.field public static final CM_DETECT_INTERACTION:I = 0xd

.field public static final CM_ENROLL:I = 0x2

.field public static final CM_ENUMERATE:I = 0x6

.field public static final CM_GENERATE_CHALLENGE:I = 0xa

.field public static final CM_GET_AUTHENTICATOR_ID:I = 0x5

.field public static final CM_GET_FEATURE:I = 0x9

.field public static final CM_INTERNAL_CLEANUP:I = 0x7

.field public static final CM_INVALIDATE:I = 0xf

.field public static final CM_INVALIDATION_REQUESTER:I = 0xe

.field public static final CM_NONE:I = 0x0

.field public static final CM_REMOVE:I = 0x4

.field public static final CM_RESET_LOCKOUT:I = 0xc

.field public static final CM_REVOKE_CHALLENGE:I = 0xb

.field public static final CM_SET_FEATURE:I = 0x8

.field public static final CM_START_USER:I = 0x11

.field public static final CM_STOP_USER:I = 0x10

.field public static final CM_UPDATE_ACTIVE_USER:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

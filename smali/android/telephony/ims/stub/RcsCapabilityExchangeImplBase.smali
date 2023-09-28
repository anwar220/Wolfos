# classes3.dex

.class public Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;,
        Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$CommandCode;
    }
.end annotation


# static fields
.field public static final COMMAND_CODE_FETCH_ERROR:I = 0x3

.field public static final COMMAND_CODE_GENERIC_FAILURE:I = 0x1

.field public static final COMMAND_CODE_INSUFFICIENT_MEMORY:I = 0x5

.field public static final COMMAND_CODE_INVALID_PARAM:I = 0x2

.field public static final COMMAND_CODE_LOST_NETWORK_CONNECTION:I = 0x6

.field public static final COMMAND_CODE_NOT_FOUND:I = 0x8

.field public static final COMMAND_CODE_NOT_SUPPORTED:I = 0x7

.field public static final COMMAND_CODE_NO_CHANGE:I = 0xa

.field public static final COMMAND_CODE_REQUEST_TIMEOUT:I = 0x4

.field public static final COMMAND_CODE_SERVICE_UNAVAILABLE:I = 0x9

.field public static final COMMAND_CODE_SERVICE_UNKNOWN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "RcsCapExchangeImplBase"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .registers 5

    const-string v0, "RcsCapExchangeImplBase"

    const-string/jumbo v1, "publishCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    :try_start_9
    invoke-interface {p2, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "RcsCapExchangeImplBase"

    const-string/jumbo v1, "sendOptionsCapabilityRequest called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    :try_start_9
    invoke-interface {p3, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "RcsCapExchangeImplBase"

    const-string/jumbo v1, "subscribeForCapabilities called with no implementation."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    :try_start_9
    invoke-interface {p2, v0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;->onCommandError(I)V
    :try_end_c
    .catch Landroid/telephony/ims/ImsException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_e

    :catch_d
    move-exception v0

    :goto_e
    return-void
.end method

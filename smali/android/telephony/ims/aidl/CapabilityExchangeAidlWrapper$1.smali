# classes3.dex

.class Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;
.super Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

.field final synthetic val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;


# direct methods
.method constructor <init>(Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .registers 3

    iput-object p1, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->this$0:Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper;

    iput-object p2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IOptionsRequestCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public respondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequest(Landroid/telephony/ims/RcsContactUceCapability;Z)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public respondToCapabilityRequestWithError(ILjava/lang/String;)V
    .registers 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->val$callback:Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;

    invoke-interface {v2, p1, p2}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;->onRespondToCapabilityRequestWithError(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_e

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_e
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/aidl/CapabilityExchangeAidlWrapper$1;->restoreCallingIdentity(J)V

    throw v2
.end method

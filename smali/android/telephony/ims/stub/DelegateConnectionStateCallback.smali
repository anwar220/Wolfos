# classes3.dex

.class public interface abstract Landroid/telephony/ims/stub/DelegateConnectionStateCallback;
.super Ljava/lang/Object;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# virtual methods
.method public abstract onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V
.end method

.method public abstract onCreated(Landroid/telephony/ims/SipDelegateConnection;)V
.end method

.method public abstract onDestroyed(I)V
.end method

.method public abstract onFeatureTagStatusChanged(Landroid/telephony/ims/DelegateRegistrationState;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/ims/DelegateRegistrationState;",
            "Ljava/util/Set<",
            "Landroid/telephony/ims/FeatureTagState;",
            ">;)V"
        }
    .end annotation
.end method

.method public onImsConfigurationChanged(Landroid/telephony/ims/SipDelegateImsConfiguration;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/telephony/ims/SipDelegateImsConfiguration;->toNewConfig()Landroid/telephony/ims/SipDelegateConfiguration;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/telephony/ims/stub/DelegateConnectionStateCallback;->onConfigurationChanged(Landroid/telephony/ims/SipDelegateConfiguration;)V

    return-void
.end method

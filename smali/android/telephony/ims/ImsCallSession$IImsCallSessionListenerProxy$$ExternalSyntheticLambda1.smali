# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda1;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionTransferred$36$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy()V

    return-void
.end method

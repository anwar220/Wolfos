# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

.field public final synthetic f$1:Lcom/android/ims/internal/IImsCallSession;

.field public final synthetic f$2:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iput-object p2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iput-object p3, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/ImsCallProfile;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;

    iget-object v1, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$1:Lcom/android/ims/internal/IImsCallSession;

    iget-object v2, p0, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy$$ExternalSyntheticLambda0;->f$2:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallSession$IImsCallSessionListenerProxy;->lambda$callSessionConferenceExtended$17$android-telephony-ims-ImsCallSession$IImsCallSessionListenerProxy(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

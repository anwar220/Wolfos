# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

.field public final synthetic f$1:Landroid/telephony/ims/ImsStateCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/ImsStateCallback;

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/ImsStateCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->lambda$onAvailable$1$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;)V

    return-void
.end method

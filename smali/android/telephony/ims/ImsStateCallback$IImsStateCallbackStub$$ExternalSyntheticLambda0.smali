# classes3.dex

.class public final synthetic Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

.field public final synthetic f$1:Landroid/telephony/ims/ImsStateCallback;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;Landroid/telephony/ims/ImsStateCallback;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iput-object p2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsStateCallback;

    iput p3, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .registers 4

    iget-object v0, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$0:Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;

    iget-object v1, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/ims/ImsStateCallback;

    iget v2, p0, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsStateCallback$IImsStateCallbackStub;->lambda$onUnavailable$3$android-telephony-ims-ImsStateCallback$IImsStateCallbackStub(Landroid/telephony/ims/ImsStateCallback;I)V

    return-void
.end method

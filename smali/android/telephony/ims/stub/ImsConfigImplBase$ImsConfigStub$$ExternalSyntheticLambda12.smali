# classes3.dex

.class public final synthetic Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iput p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$1:I

    iput p3, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$2:I

    iput-object p4, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$0:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    iget v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$1:I

    iget v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$2:I

    iget-object v3, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;->f$3:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyIntImsConfigChanged$13$android-telephony-ims-stub-ImsConfigImplBase$ImsConfigStub(IILjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

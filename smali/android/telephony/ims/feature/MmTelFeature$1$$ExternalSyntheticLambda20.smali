# classes3.dex

.class public final synthetic Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Landroid/telephony/ims/feature/MmTelFeature$1;Ljava/util/concurrent/atomic/AtomicReference;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iput-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;->f$0:Landroid/telephony/ims/feature/MmTelFeature$1;

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature$1$$ExternalSyntheticLambda20;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/MmTelFeature$1;->lambda$getMultiEndpointInterface$9$android-telephony-ims-feature-MmTelFeature$1(Ljava/util/concurrent/atomic/AtomicReference;)Lcom/android/ims/internal/IImsMultiEndpoint;

    move-result-object v0

    return-object v0
.end method

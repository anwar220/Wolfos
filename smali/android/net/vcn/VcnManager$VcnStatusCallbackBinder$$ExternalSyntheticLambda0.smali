# classes2.dex

.class public final synthetic Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iput p2, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;->f$0:Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;

    iget v1, p0, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Landroid/net/vcn/VcnManager$VcnStatusCallbackBinder;->lambda$onVcnStatusChanged$0$android-net-vcn-VcnManager$VcnStatusCallbackBinder(I)V

    return-void
.end method

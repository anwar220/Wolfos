# classes2.dex

.class public final synthetic Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanScanner$Callback;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanScanner$Callback;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iput p2, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    iget v1, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Landroid/net/lowpan/LowpanScanner$2$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, v2}, Landroid/net/lowpan/LowpanScanner$2;->lambda$onEnergyScanResult$0(Landroid/net/lowpan/LowpanScanner$Callback;II)V

    return-void
.end method

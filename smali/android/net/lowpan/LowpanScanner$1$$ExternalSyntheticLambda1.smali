# classes2.dex

.class public final synthetic Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/lowpan/LowpanScanner$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/lowpan/LowpanScanner$Callback;

    invoke-static {v0}, Landroid/net/lowpan/LowpanScanner$1;->lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V

    return-void
.end method

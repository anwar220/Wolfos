# classes3.dex

.class public final synthetic Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ScrollCaptureConnection$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureCallback;

    invoke-static {v0}, Landroid/view/ScrollCaptureConnection;->lambda$close$4(Landroid/view/ScrollCaptureCallback;)V

    return-void
.end method

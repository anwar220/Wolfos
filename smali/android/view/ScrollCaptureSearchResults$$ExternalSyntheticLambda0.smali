# classes3.dex

.class public final synthetic Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ScrollCaptureSearchResults;

.field public final synthetic f$1:Landroid/view/ScrollCaptureCallback;

.field public final synthetic f$2:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ScrollCaptureSearchResults;Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iput-object p2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$1:Landroid/view/ScrollCaptureCallback;

    iput-object p3, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$0:Landroid/view/ScrollCaptureSearchResults;

    iget-object v1, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$1:Landroid/view/ScrollCaptureCallback;

    iget-object v2, p0, Landroid/view/ScrollCaptureSearchResults$$ExternalSyntheticLambda0;->f$2:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1, v2}, Landroid/view/ScrollCaptureSearchResults;->lambda$addTarget$0$android-view-ScrollCaptureSearchResults(Landroid/view/ScrollCaptureCallback;Ljava/util/function/Consumer;)V

    return-void
.end method

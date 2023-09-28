# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;

.field public final synthetic f$1:Landroid/view/IScrollCaptureResponseListener;

.field public final synthetic f$2:Landroid/view/ScrollCaptureSearchResults;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$0:Landroid/view/ViewRootImpl;

    iput-object p2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iput-object p3, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$2:Landroid/view/ScrollCaptureSearchResults;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$0:Landroid/view/ViewRootImpl;

    iget-object v1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$1:Landroid/view/IScrollCaptureResponseListener;

    iget-object v2, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda6;->f$2:Landroid/view/ScrollCaptureSearchResults;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->lambda$handleScrollCaptureRequest$10$android-view-ViewRootImpl(Landroid/view/IScrollCaptureResponseListener;Landroid/view/ScrollCaptureSearchResults;)V

    return-void
.end method

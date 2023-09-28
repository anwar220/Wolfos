# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/window/CompatOnBackInvokedCallback;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;->f$0:Landroid/view/ViewRootImpl;

    return-void
.end method


# virtual methods
.method public final onBackInvoked()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$$ExternalSyntheticLambda16;->f$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->lambda$registerCompatOnBackInvokedCallback$12$android-view-ViewRootImpl()V

    return-void
.end method

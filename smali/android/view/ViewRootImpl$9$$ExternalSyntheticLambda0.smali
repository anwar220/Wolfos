# classes3.dex

.class public final synthetic Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/ViewRootImpl$9;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewRootImpl$9;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$9;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/view/ViewRootImpl$9$$ExternalSyntheticLambda0;->f$0:Landroid/view/ViewRootImpl$9;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$9;->lambda$onSyncComplete$0$android-view-ViewRootImpl$9()V

    return-void
.end method

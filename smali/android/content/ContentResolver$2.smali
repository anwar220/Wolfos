# classes.dex

.class Landroid/content/ContentResolver$2;
.super Landroid/content/ISyncStatusObserver$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentResolver;->addStatusChangeListener(ILandroid/content/SyncStatusObserver;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroid/content/SyncStatusObserver;


# direct methods
.method constructor <init>(Landroid/content/SyncStatusObserver;)V
    .registers 2

    iput-object p1, p0, Landroid/content/ContentResolver$2;->val$callback:Landroid/content/SyncStatusObserver;

    invoke-direct {p0}, Landroid/content/ISyncStatusObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/content/ContentResolver$2;->val$callback:Landroid/content/SyncStatusObserver;

    invoke-interface {v0, p1}, Landroid/content/SyncStatusObserver;->onStatusChanged(I)V

    return-void
.end method

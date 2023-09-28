# classes.dex

.class public interface abstract Landroid/content/ISyncAdapterUnsyncableAccountCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ISyncAdapterUnsyncableAccountCallback$Stub;,
        Landroid/content/ISyncAdapterUnsyncableAccountCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onUnsyncableAccountDone(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

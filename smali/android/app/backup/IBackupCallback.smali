# classes.dex

.class public interface abstract Landroid/app/backup/IBackupCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/IBackupCallback$Stub;,
        Landroid/app/backup/IBackupCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.app.backup.IBackupCallback"


# virtual methods
.method public abstract operationComplete(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

# classes3.dex

.class public interface abstract Landroid/os/incremental/IStorageHealthListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/incremental/IStorageHealthListener$Stub;,
        Landroid/os/incremental/IStorageHealthListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.os.incremental.IStorageHealthListener"

.field public static final HEALTH_STATUS_BLOCKED:I = 0x2

.field public static final HEALTH_STATUS_OK:I = 0x0

.field public static final HEALTH_STATUS_READS_PENDING:I = 0x1

.field public static final HEALTH_STATUS_UNHEALTHY:I = 0x3


# virtual methods
.method public abstract onHealthStatus(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

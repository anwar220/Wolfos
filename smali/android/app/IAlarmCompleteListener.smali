# classes.dex

.class public interface abstract Landroid/app/IAlarmCompleteListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IAlarmCompleteListener$Stub;,
        Landroid/app/IAlarmCompleteListener$Default;
    }
.end annotation


# virtual methods
.method public abstract alarmComplete(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
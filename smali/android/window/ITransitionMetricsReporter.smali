# classes4.dex

.class public interface abstract Landroid/window/ITransitionMetricsReporter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITransitionMetricsReporter$Stub;,
        Landroid/window/ITransitionMetricsReporter$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.window.ITransitionMetricsReporter"


# virtual methods
.method public abstract reportAnimationStart(Landroid/os/IBinder;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

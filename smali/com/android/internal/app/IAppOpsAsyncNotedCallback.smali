# classes4.dex

.class public interface abstract Lcom/android/internal/app/IAppOpsAsyncNotedCallback;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Stub;,
        Lcom/android/internal/app/IAppOpsAsyncNotedCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IAppOpsAsyncNotedCallback"


# virtual methods
.method public abstract opNoted(Landroid/app/AsyncNotedAppOp;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

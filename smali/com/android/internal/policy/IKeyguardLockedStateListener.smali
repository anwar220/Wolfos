# classes4.dex

.class public interface abstract Lcom/android/internal/policy/IKeyguardLockedStateListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardLockedStateListener$Stub;,
        Lcom/android/internal/policy/IKeyguardLockedStateListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IKeyguardLockedStateListener"


# virtual methods
.method public abstract onKeyguardLockedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

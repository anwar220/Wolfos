# classes4.dex

.class public interface abstract Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Stub;,
        Lcom/android/internal/widget/IWeakEscrowTokenRemovedListener$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IWeakEscrowTokenRemovedListener"


# virtual methods
.method public abstract onWeakEscrowTokenRemoved(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

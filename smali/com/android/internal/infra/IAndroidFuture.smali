# classes4.dex

.class public interface abstract Lcom/android/internal/infra/IAndroidFuture;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/infra/IAndroidFuture$Stub;,
        Lcom/android/internal/infra/IAndroidFuture$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.infra.IAndroidFuture"


# virtual methods
.method public abstract complete(Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

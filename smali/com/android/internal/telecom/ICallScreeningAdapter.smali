# classes4.dex

.class public interface abstract Lcom/android/internal/telecom/ICallScreeningAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/ICallScreeningAdapter$Stub;,
        Lcom/android/internal/telecom/ICallScreeningAdapter$Default;
    }
.end annotation


# virtual methods
.method public abstract onScreeningResponse(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/CallScreeningService$ParcelableCallResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

# classes2.dex

.class public interface abstract Landroid/view/translation/ITranslationDirectManager;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/ITranslationDirectManager$Stub;,
        Landroid/view/translation/ITranslationDirectManager$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "android.view.translation.ITranslationDirectManager"


# virtual methods
.method public abstract onFinishTranslationSession(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTranslationRequest(Landroid/view/translation/TranslationRequest;ILandroid/os/ICancellationSignal;Landroid/service/translation/ITranslationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

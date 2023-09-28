# classes4.dex

.class public interface abstract Landroid/window/OnBackInvokedDispatcher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/OnBackInvokedDispatcher$Priority;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final PRIORITY_DEFAULT:I = 0x0

.field public static final PRIORITY_OVERLAY:I = 0xf4240

.field public static final PRIORITY_SYSTEM:I = -0x1

.field public static final TAG:Ljava/lang/String; = "OnBackInvokedDispatcher"


# virtual methods
.method public abstract registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
.end method

.method public registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .registers 2

    return-void
.end method

.method public setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .registers 2

    return-void
.end method

.method public abstract unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
.end method

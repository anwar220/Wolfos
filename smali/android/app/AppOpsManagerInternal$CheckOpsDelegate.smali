# classes.dex

.class public interface abstract Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CheckOpsDelegate"
.end annotation


# virtual methods
.method public abstract checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/QuintFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/util/function/QuintConsumer<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v0, p6

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/util/function/QuintConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public abstract finishProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/QuadFunction;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Lcom/android/internal/util/function/QuadFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/util/function/HeptFunction<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation
.end method

.method public abstract noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/AttributionSource;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/android/internal/util/function/HexFunction<",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation
.end method

.method public abstract startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation
.end method

.method public abstract startProxyOperation(Landroid/os/IBinder;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "I",
            "Landroid/content/AttributionSource;",
            "ZZ",
            "Ljava/lang/String;",
            "ZZIII",
            "Lcom/android/internal/util/function/UndecFunction<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Integer;",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Landroid/app/SyncNotedAppOp;",
            ">;)",
            "Landroid/app/SyncNotedAppOp;"
        }
    .end annotation
.end method

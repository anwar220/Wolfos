# classes3.dex

.class public Landroid/transparency/BinaryTransparencyManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "TransparencyManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/android/internal/os/IBinaryTransparencyService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/IBinaryTransparencyService;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/transparency/BinaryTransparencyManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    return-void
.end method


# virtual methods
.method public getApexInfo()Ljava/util/Map;
    .registers 3

    :try_start_0
    const-string v0, "TransparencyManager"

    const-string v1, "Calling backend\'s getApexInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getApexInfo()Ljava/util/Map;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSignedImageInfo()Ljava/lang/String;
    .registers 3

    :try_start_0
    iget-object v0, p0, Landroid/transparency/BinaryTransparencyManager;->mService:Lcom/android/internal/os/IBinaryTransparencyService;

    invoke-interface {v0}, Lcom/android/internal/os/IBinaryTransparencyService;->getSignedImageInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

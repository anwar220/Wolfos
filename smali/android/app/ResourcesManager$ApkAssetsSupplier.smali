# classes.dex

.class Landroid/app/ResourcesManager$ApkAssetsSupplier;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ResourcesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApkAssetsSupplier"
.end annotation


# instance fields
.field final mLocalCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/ResourcesManager$ApkKey;",
            "Landroid/content/res/ApkAssets;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/app/ResourcesManager;


# direct methods
.method private constructor <init>(Landroid/app/ResourcesManager;)V
    .registers 2

    iput-object p1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkAssetsSupplier-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/ResourcesManager$ApkAssetsSupplier;-><init>(Landroid/app/ResourcesManager;)V

    return-void
.end method


# virtual methods
.method load(Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ApkAssets;

    if-nez v0, :cond_15

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->this$0:Landroid/app/ResourcesManager;

    invoke-static {v1, p1}, Landroid/app/ResourcesManager;->-$$Nest$mloadApkAssets(Landroid/app/ResourcesManager;Landroid/app/ResourcesManager$ApkKey;)Landroid/content/res/ApkAssets;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ResourcesManager$ApkAssetsSupplier;->mLocalCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    return-object v0
.end method
# classes.dex

.class public Landroid/content/om/FabricatedOverlay$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/FabricatedOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/FabricatedOverlayInternalEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mName:Ljava/lang/String;

.field private final mOwningPackage:Ljava/lang/String;

.field private mTargetOverlayable:Ljava/lang/String;

.field private final mTargetPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    const-string v0, "\'owningPackage\' must not be empty nor null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "\'name\'\' must not be empty nor null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string v0, "\'targetPackage\' must not be empty nor null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iput-object p2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/om/FabricatedOverlay;
    .registers 4

    new-instance v0, Landroid/os/FabricatedOverlayInternal;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternal;-><init>()V

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mOwningPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->packageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mName:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->overlayName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetPackage:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetPackageName:Ljava/lang/String;

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->targetOverlayable:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    iget-object v1, v0, Landroid/os/FabricatedOverlayInternal;->entries:Ljava/util/List;

    iget-object v2, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Landroid/content/om/FabricatedOverlay;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/content/om/FabricatedOverlay;-><init>(Landroid/os/FabricatedOverlayInternal;Landroid/content/om/FabricatedOverlay-IA;)V

    return-object v1
.end method

.method public setResourceValue(Ljava/lang/String;II)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 6

    new-instance v0, Landroid/os/FabricatedOverlayInternalEntry;

    invoke-direct {v0}, Landroid/os/FabricatedOverlayInternalEntry;-><init>()V

    iput-object p1, v0, Landroid/os/FabricatedOverlayInternalEntry;->resourceName:Ljava/lang/String;

    iput p2, v0, Landroid/os/FabricatedOverlayInternalEntry;->dataType:I

    iput p3, v0, Landroid/os/FabricatedOverlayInternalEntry;->data:I

    iget-object v1, p0, Landroid/content/om/FabricatedOverlay$Builder;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setTargetOverlayable(Ljava/lang/String;)Landroid/content/om/FabricatedOverlay$Builder;
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/om/FabricatedOverlay$Builder;->mTargetOverlayable:Ljava/lang/String;

    return-object p0
.end method

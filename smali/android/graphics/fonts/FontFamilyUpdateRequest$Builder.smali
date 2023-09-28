# classes.dex

.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mFontFamilies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;",
            ">;"
        }
    .end annotation
.end field

.field private final mFontFileUpdateRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFileUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFileUpdateRequests:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFamilies:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFontFamily(Landroid/graphics/fonts/FontFamilyUpdateRequest$FontFamily;)Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFamilies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addFontFileUpdateRequest(Landroid/graphics/fonts/FontFileUpdateRequest;)Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFileUpdateRequests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/graphics/fonts/FontFamilyUpdateRequest;
    .registers 5

    new-instance v0, Landroid/graphics/fonts/FontFamilyUpdateRequest;

    iget-object v1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFileUpdateRequests:Ljava/util/List;

    iget-object v2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Builder;->mFontFamilies:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/fonts/FontFamilyUpdateRequest;-><init>(Ljava/util/List;Ljava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest-IA;)V

    return-object v0
.end method

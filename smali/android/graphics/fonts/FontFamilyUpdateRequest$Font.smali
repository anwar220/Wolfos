# classes.dex

.class public final Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/fonts/FontFamilyUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Font"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/fonts/FontFamilyUpdateRequest$Font$Builder;
    }
.end annotation


# instance fields
.field private final mAxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation
.end field

.field private final mIndex:I

.field private final mPostScriptName:Ljava/lang/String;

.field private final mStyle:Landroid/graphics/fonts/FontStyle;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/fonts/FontStyle;",
            "I",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    iput-object p2, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    iput p3, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mIndex:I

    iput-object p4, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mAxes:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;Landroid/graphics/fonts/FontFamilyUpdateRequest$Font-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;-><init>(Ljava/lang/String;Landroid/graphics/fonts/FontStyle;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getAxes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mAxes:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .registers 2

    iget v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mIndex:I

    return v0
.end method

.method public getPostScriptName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mPostScriptName:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Landroid/graphics/fonts/FontStyle;
    .registers 2

    iget-object v0, p0, Landroid/graphics/fonts/FontFamilyUpdateRequest$Font;->mStyle:Landroid/graphics/fonts/FontStyle;

    return-object v0
.end method

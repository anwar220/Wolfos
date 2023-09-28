# classes.dex

.class public final Landroid/accessibilityservice/MagnificationConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accessibilityservice/MagnificationConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCenterX:F

.field private mCenterY:F

.field private mMode:I

.field private mScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    const/high16 v0, 0x7fc00000  # Float.NaN

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    iput v0, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    return-void
.end method


# virtual methods
.method public build()Landroid/accessibilityservice/MagnificationConfig;
    .registers 3

    new-instance v0, Landroid/accessibilityservice/MagnificationConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;-><init>(Landroid/accessibilityservice/MagnificationConfig-IA;)V

    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmMode(Landroid/accessibilityservice/MagnificationConfig;I)V

    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmScale(Landroid/accessibilityservice/MagnificationConfig;F)V

    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmCenterX(Landroid/accessibilityservice/MagnificationConfig;F)V

    iget v1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    invoke-static {v0, v1}, Landroid/accessibilityservice/MagnificationConfig;->-$$Nest$fputmCenterY(Landroid/accessibilityservice/MagnificationConfig;F)V

    return-object v0
.end method

.method public setCenterX(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterX:F

    return-object p0
.end method

.method public setCenterY(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mCenterY:F

    return-object p0
.end method

.method public setMode(I)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mMode:I

    return-object p0
.end method

.method public setScale(F)Landroid/accessibilityservice/MagnificationConfig$Builder;
    .registers 2

    iput p1, p0, Landroid/accessibilityservice/MagnificationConfig$Builder;->mScale:F

    return-object p0
.end method

# classes4.dex

.class public final Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/inspector/InspectionCompanion;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/view/inspector/InspectionCompanion<",
        "Landroid/widget/AbsoluteLayout$LayoutParams;",
        ">;"
    }
.end annotation


# instance fields
.field private mLayout_xId:I

.field private mLayout_yId:I

.field private mPropertiesMapped:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method


# virtual methods
.method public mapProperties(Landroid/view/inspector/PropertyMapper;)V
    .registers 4

    const-string/jumbo v0, "layout_x"

    const v1, 0x101017f

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mLayout_xId:I

    const-string/jumbo v0, "layout_y"

    const v1, 0x1010180

    invoke-interface {p1, v0, v1}, Landroid/view/inspector/PropertyMapper;->mapInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mLayout_yId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    return-void
.end method

.method public readProperties(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V
    .registers 5

    iget-boolean v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mPropertiesMapped:Z

    if-eqz v0, :cond_13

    iget v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mLayout_xId:I

    iget v1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    iget v0, p0, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->mLayout_yId:I

    iget v1, p1, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-interface {p2, v0, v1}, Landroid/view/inspector/PropertyReader;->readInt(II)V

    return-void

    :cond_13
    new-instance v0, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;

    invoke-direct {v0}, Landroid/view/inspector/InspectionCompanion$UninitializedPropertyMapException;-><init>()V

    throw v0
.end method

.method public bridge synthetic readProperties(Ljava/lang/Object;Landroid/view/inspector/PropertyReader;)V
    .registers 3

    check-cast p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout$LayoutParams$InspectionCompanion;->readProperties(Landroid/widget/AbsoluteLayout$LayoutParams;Landroid/view/inspector/PropertyReader;)V

    return-void
.end method

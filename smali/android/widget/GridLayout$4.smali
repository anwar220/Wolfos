# classes4.dex

.class Landroid/widget/GridLayout$4;
.super Landroid/widget/GridLayout$Alignment;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/widget/GridLayout$Alignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlignmentValue(Landroid/view/View;II)I
    .registers 4

    return p2
.end method

.method getGravityOffset(Landroid/view/View;I)I
    .registers 3

    return p2
.end method

# classes4.dex

.class public Landroid/widget/GridLayout$Spec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Spec"
.end annotation


# static fields
.field static final DEFAULT_WEIGHT:F

.field static final UNDEFINED:Landroid/widget/GridLayout$Spec;


# instance fields
.field final alignment:Landroid/widget/GridLayout$Alignment;

.field final span:Landroid/widget/GridLayout$Interval;

.field final startDefined:Z

.field final weight:F


# direct methods
.method static bridge synthetic -$$Nest$mgetAbsoluteAlignment(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/GridLayout$Spec;->getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/high16 v0, -0x80000000

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    sput-object v0, Landroid/widget/GridLayout$Spec;->UNDEFINED:Landroid/widget/GridLayout$Spec;

    return-void
.end method

.method private constructor <init>(ZIILandroid/widget/GridLayout$Alignment;F)V
    .registers 8

    new-instance v0, Landroid/widget/GridLayout$Interval;

    add-int v1, p2, p3

    invoke-direct {v0, p2, v1}, Landroid/widget/GridLayout$Interval;-><init>(II)V

    invoke-direct {p0, p1, v0, p4, p5}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method synthetic constructor <init>(ZIILandroid/widget/GridLayout$Alignment;FLandroid/widget/GridLayout$Spec-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/widget/GridLayout$Spec;-><init>(ZIILandroid/widget/GridLayout$Alignment;F)V

    return-void
.end method

.method private constructor <init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iput-object p2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iput-object p3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iput p4, p0, Landroid/widget/GridLayout$Spec;->weight:F

    return-void
.end method

.method private getAbsoluteAlignment(Z)Landroid/widget/GridLayout$Alignment;
    .registers 4

    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    return-object v0

    :cond_9
    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    if-eqz p1, :cond_15

    sget-object v0, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    goto :goto_17

    :cond_15
    sget-object v0, Landroid/widget/GridLayout;->BASELINE:Landroid/widget/GridLayout$Alignment;

    :goto_17
    return-object v0

    :cond_18
    sget-object v0, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    return-object v0
.end method


# virtual methods
.method final copyWriteAlignment(Landroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;
    .registers 6

    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method final copyWriteSpan(Landroid/widget/GridLayout$Interval;)Landroid/widget/GridLayout$Spec;
    .registers 6

    new-instance v0, Landroid/widget/GridLayout$Spec;

    iget-boolean v1, p0, Landroid/widget/GridLayout$Spec;->startDefined:Z

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget v3, p0, Landroid/widget/GridLayout$Spec;->weight:F

    invoke-direct {v0, v1, p1, v2, v3}, Landroid/widget/GridLayout$Spec;-><init>(ZLandroid/widget/GridLayout$Interval;Landroid/widget/GridLayout$Alignment;F)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/widget/GridLayout$Spec;

    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    iget-object v4, v2, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    return v1

    :cond_20
    iget-object v3, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    iget-object v4, v2, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v3, v4}, Landroid/widget/GridLayout$Interval;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    return v1

    :cond_2b
    return v0

    :cond_2c
    :goto_2c
    return v1
.end method

.method final getFlexibility()I
    .registers 3

    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    sget-object v1, Landroid/widget/GridLayout;->UNDEFINED_ALIGNMENT:Landroid/widget/GridLayout$Alignment;

    if-ne v0, v1, :cond_f

    iget v0, p0, Landroid/widget/GridLayout$Spec;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    const/4 v0, 0x2

    :goto_10
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Landroid/widget/GridLayout$Spec;->span:Landroid/widget/GridLayout$Interval;

    invoke-virtual {v0}, Landroid/widget/GridLayout$Interval;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/widget/GridLayout$Spec;->alignment:Landroid/widget/GridLayout$Alignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

# classes2.dex

.class public final Landroid/view/inputmethod/EditorBoundsInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/EditorBoundsInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mEditorBounds:Landroid/graphics/RectF;

.field private mHandwritingBounds:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fgetmEditorBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mEditorBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandwritingBounds(Landroid/view/inputmethod/EditorBoundsInfo$Builder;)Landroid/graphics/RectF;
    .registers 1

    iget-object p0, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mHandwritingBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mEditorBounds:Landroid/graphics/RectF;

    iput-object v0, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mHandwritingBounds:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public build()Landroid/view/inputmethod/EditorBoundsInfo;
    .registers 3

    new-instance v0, Landroid/view/inputmethod/EditorBoundsInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/EditorBoundsInfo;-><init>(Landroid/view/inputmethod/EditorBoundsInfo$Builder;Landroid/view/inputmethod/EditorBoundsInfo-IA;)V

    return-object v0
.end method

.method public setEditorBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mEditorBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method public setHandwritingBounds(Landroid/graphics/RectF;)Landroid/view/inputmethod/EditorBoundsInfo$Builder;
    .registers 2

    iput-object p1, p0, Landroid/view/inputmethod/EditorBoundsInfo$Builder;->mHandwritingBounds:Landroid/graphics/RectF;

    return-object p0
.end method

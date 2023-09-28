# classes2.dex

.class public Landroid/inputmethodservice/Keyboard$Row;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/Keyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Row"
.end annotation


# instance fields
.field public defaultHeight:I

.field public defaultHorizontalGap:I

.field public defaultWidth:I

.field mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            ">;"
        }
    .end annotation
.end field

.field public mode:I

.field private parent:Landroid/inputmethodservice/Keyboard;

.field public rowEdgeFlags:I

.field public verticalGap:I


# direct methods
.method static bridge synthetic -$$Nest$fgetparent(Landroid/inputmethodservice/Keyboard$Row;)Landroid/inputmethodservice/Keyboard;
    .registers 1

    iget-object p0, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard;Landroid/content/res/XmlResourceParser;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->Keyboard:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultWidth:I

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v4, 0x1

    invoke-static {v0, v4, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHeight:I

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayWidth(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultHorizontalGap(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v5, 0x2

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->defaultHorizontalGap:I

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDisplayHeight(Landroid/inputmethodservice/Keyboard;)I

    move-result v1

    invoke-static {p2}, Landroid/inputmethodservice/Keyboard;->-$$Nest$fgetmDefaultVerticalGap(Landroid/inputmethodservice/Keyboard;)I

    move-result v2

    const/4 v5, 0x3

    invoke-static {v0, v5, v1, v2}, Landroid/inputmethodservice/Keyboard;->getDimensionOrFraction(Landroid/content/res/TypedArray;III)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->verticalGap:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    sget-object v2, Lcom/android/internal/R$styleable;->Keyboard_Row:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->rowEdgeFlags:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/inputmethodservice/Keyboard$Row;->mode:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/inputmethodservice/Keyboard;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/Keyboard$Row;->mKeys:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/inputmethodservice/Keyboard$Row;->parent:Landroid/inputmethodservice/Keyboard;

    return-void
.end method

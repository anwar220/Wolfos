# classes4.dex

.class Landroid/widget/AutoCompleteTextView$PassThroughClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AutoCompleteTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PassThroughClickListener"
.end annotation


# instance fields
.field private mWrapped:Landroid/view/View$OnClickListener;

.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method static bridge synthetic -$$Nest$fputmWrapped(Landroid/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AutoCompleteTextView;Landroid/widget/AutoCompleteTextView$PassThroughClickListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-static {v0}, Landroid/widget/AutoCompleteTextView;->-$$Nest$monClickImpl(Landroid/widget/AutoCompleteTextView;)V

    iget-object v0, p0, Landroid/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_c
    return-void
.end method

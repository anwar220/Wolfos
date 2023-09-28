# classes4.dex

.class abstract Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewHolderBase"
.end annotation


# instance fields
.field private mViewType:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return-void
.end method


# virtual methods
.method getViewType()I
    .registers 2

    iget v0, p0, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;->mViewType:I

    return v0
.end method

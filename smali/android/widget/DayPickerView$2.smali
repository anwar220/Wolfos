# classes4.dex

.class Landroid/widget/DayPickerView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DayPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DayPickerView;


# direct methods
.method constructor <init>(Landroid/widget/DayPickerView;)V
    .registers 2

    iput-object p1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .registers 2

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 6

    const/high16 v0, 0x3f000000  # 0.5f

    sub-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40000000  # 2.0f

    mul-float/2addr v0, v1

    iget-object v1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v1}, Landroid/widget/DayPickerView;->-$$Nest$fgetmPrevButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object v1, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v1}, Landroid/widget/DayPickerView;->-$$Nest$fgetmNextButton(Landroid/widget/DayPickerView;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    return-void
.end method

.method public onPageSelected(I)V
    .registers 3

    iget-object v0, p0, Landroid/widget/DayPickerView$2;->this$0:Landroid/widget/DayPickerView;

    invoke-static {v0, p1}, Landroid/widget/DayPickerView;->-$$Nest$mupdateButtonVisibility(Landroid/widget/DayPickerView;I)V

    return-void
.end method

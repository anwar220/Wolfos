# classes4.dex

.class Lcom/android/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_7

    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_7
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

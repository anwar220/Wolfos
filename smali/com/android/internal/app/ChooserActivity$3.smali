# classes4.dex

.class Lcom/android/internal/app/ChooserActivity$3;
.super Lcom/android/internal/content/PackageMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->createPackageMonitor(Lcom/android/internal/app/ResolverListAdapter;)Lcom/android/internal/content/PackageMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$3;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$3;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .registers 3

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$3;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$3;->val$listAdapter:Lcom/android/internal/app/ResolverListAdapter;

    invoke-static {v0, v1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mhandlePackagesChanged(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverListAdapter;)V

    return-void
.end method

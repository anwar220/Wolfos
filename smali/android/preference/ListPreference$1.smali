# classes3.dex

.class Landroid/preference/ListPreference$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/ListPreference;


# direct methods
.method constructor <init>(Landroid/preference/ListPreference;)V
    .registers 2

    iput-object p1, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    invoke-static {v0, p2}, Landroid/preference/ListPreference;->-$$Nest$fputmClickedDialogEntryIndex(Landroid/preference/ListPreference;I)V

    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/preference/ListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Landroid/preference/ListPreference$1;->this$0:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->postDismiss()V

    return-void
.end method
# classes2.dex

.class public final synthetic Landroid/view/textclassifier/TextClassification$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/app/PendingIntent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/PendingIntent;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/textclassifier/TextClassification$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Landroid/view/textclassifier/TextClassification$$ExternalSyntheticLambda0;->f$0:Landroid/app/PendingIntent;

    invoke-static {v0, p1}, Landroid/view/textclassifier/TextClassification;->lambda$createIntentOnClickListener$0(Landroid/app/PendingIntent;Landroid/view/View;)V

    return-void
.end method

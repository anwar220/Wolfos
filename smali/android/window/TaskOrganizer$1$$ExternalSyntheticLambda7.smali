# classes4.dex

.class public final synthetic Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/window/TaskOrganizer$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/window/TaskOrganizer$1;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;->f$0:Landroid/window/TaskOrganizer$1;

    iput p2, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;->f$0:Landroid/window/TaskOrganizer$1;

    iget v1, p0, Landroid/window/TaskOrganizer$1$$ExternalSyntheticLambda7;->f$1:I

    invoke-virtual {v0, v1}, Landroid/window/TaskOrganizer$1;->lambda$onImeDrawnOnTask$8$android-window-TaskOrganizer$1(I)V

    return-void
.end method

# classes.dex

.class public Landroid/gesture/Prediction;
.super Ljava/lang/Object;


# instance fields
.field public final name:Ljava/lang/String;

.field public score:D


# direct methods
.method constructor <init>(Ljava/lang/String;D)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    iput-wide p2, p0, Landroid/gesture/Prediction;->score:D

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    return-object v0
.end method
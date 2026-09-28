.class Lcom/android/launcher2/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher2/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field child:Landroid/view/View;

.field dragView:Lcom/android/launcher2/DragView;

.field dragViewCenter:[F

.field minSpanX:I

.field minSpanY:I

.field spanX:I

.field spanY:I

.field final synthetic this$0:Lcom/android/launcher2/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Workspace;[FIIIILcom/android/launcher2/DragView;Landroid/view/View;)V
    .locals 0

    .line 3177
    iput-object p1, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3178
    iput-object p2, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 3179
    iput p3, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 3180
    iput p4, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 3181
    iput p5, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanX:I

    .line 3182
    iput p6, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanY:I

    .line 3183
    iput-object p8, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 3184
    iput-object p7, p0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher2/DragView;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher2/Alarm;)V
    .locals 27

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3189
    iget-object v9, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v9}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    const/4 v13, 0x0

    aget v2, v2, v13

    float-to-int v3, v2

    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    .line 3190
    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v2

    const/4 v14, 0x1

    aget v2, v2, v14

    float-to-int v4, v2

    iget v5, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanX:I

    iget v6, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;

    move-result-object v7

    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v8

    move-object v2, v9

    .line 3189
    invoke-static/range {v2 .. v8}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;IIIILcom/android/launcher2/CellLayout;[I)[I

    move-result-object v2

    invoke-static {v9, v2}, Lcom/android/launcher2/Workspace;->access$802(Lcom/android/launcher2/Workspace;[I)[I

    .line 3191
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v3

    aget v3, v3, v13

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1202(Lcom/android/launcher2/Workspace;I)I

    .line 3192
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v3

    aget v3, v3, v14

    invoke-static {v2, v3}, Lcom/android/launcher2/Workspace;->access$1302(Lcom/android/launcher2/Workspace;I)I

    .line 3194
    iget-object v15, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v15}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    .line 3195
    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v4

    aget v4, v4, v14

    float-to-int v4, v4

    iget v5, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v7, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanX:I

    iget v8, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v9, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v10, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    .line 3196
    invoke-static {v10}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v10

    const/4 v12, 0x0

    move-object v11, v1

    .line 3194
    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher2/CellLayout;->createArea(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    invoke-static {v15, v2}, Lcom/android/launcher2/Workspace;->access$802(Lcom/android/launcher2/Workspace;[I)[I

    .line 3198
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v2, v2, v13

    if-ltz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v2

    aget v2, v2, v14

    if-gez v2, :cond_0

    goto :goto_0

    .line 3201
    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->setDragMode(I)V

    goto :goto_1

    .line 3199
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->revertTempState()V

    .line 3204
    :goto_1
    aget v2, v1, v13

    iget v3, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v2, v3, :cond_3

    aget v2, v1, v14

    iget v3, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v24, v13

    goto :goto_3

    :cond_3
    :goto_2
    move/from16 v24, v14

    .line 3205
    :goto_3
    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v2}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/CellLayout;

    move-result-object v15

    iget-object v2, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v3, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$1400(Lcom/android/launcher2/Workspace;)Landroid/graphics/Bitmap;

    move-result-object v17

    iget-object v3, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    .line 3206
    invoke-static {v3}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v3

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)[F

    move-result-object v4

    aget v4, v4, v14

    float-to-int v4, v4

    iget-object v5, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    .line 3207
    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    aget v20, v5, v13

    iget-object v5, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v5}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)[I

    move-result-object v5

    aget v21, v5, v14

    aget v22, v1, v13

    aget v23, v1, v14

    iget-object v1, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher2/DragView;

    .line 3208
    invoke-virtual {v1}, Lcom/android/launcher2/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v25

    iget-object v0, v0, Lcom/android/launcher2/Workspace$ReorderAlarmListener;->dragView:Lcom/android/launcher2/DragView;

    invoke-virtual {v0}, Lcom/android/launcher2/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v26

    move-object/from16 v16, v2

    move/from16 v18, v3

    move/from16 v19, v4

    .line 3205
    invoke-virtual/range {v15 .. v26}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIIIIIZLandroid/graphics/Point;Landroid/graphics/Rect;)V

    return-void
.end method
